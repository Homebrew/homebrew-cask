cask "radio-silence" do
  version "3.2"
  sha256 "565bbe80b5d66349bfb2a14cbfc33c3aed40ac65976f737e87da5e360ed60cdd"

  url "https://radiosilenceapp.com/downloads/Radio_Silence_#{version}.pkg"
  name "Radio Silence"
  desc "Network monitor and firewall"
  homepage "https://radiosilenceapp.com/"

  livecheck do
    url "https://radiosilenceapp.com/update"
    regex(%r{href=.*?/Radio_Silence_(\d+(?:\.\d+)*)\.pkg}i)
  end

  pkg "Radio_Silence_#{version}.pkg"

  # We intentionally unload the kext twice as a workaround
  # See https://github.com/Homebrew/homebrew-cask/pull/1802#issuecomment-34171151

  uninstall early_script: {
              executable:   "/sbin/kextunload",
              args:         ["-b", "com.radiosilenceapp.nke.filter"],
              must_succeed: false,
            },
            launchctl:    [
              "com.radiosilenceapp.agent",
              "com.radiosilenceapp.nke",
              "com.radiosilenceapp.trial",
            ],
            quit:         "com.radiosilenceapp.client",
            kext:         "com.radiosilenceapp.nke.filter",
            pkgutil:      "com.radiosilenceapp.*"

  zap trash: "~/Library/Application Support/Radio Silence"
end
