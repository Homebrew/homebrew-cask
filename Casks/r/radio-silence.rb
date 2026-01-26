cask "radio-silence" do
  version "3.3"
  sha256 "2dda80432b4d1678124fa2109f99c82fc1ce17177086cc42561b256f6b7d2b86"

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
