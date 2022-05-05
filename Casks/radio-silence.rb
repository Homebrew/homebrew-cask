cask "radio-silence" do
  version "3.1"
  sha256 "22db11cfd8ee7b15484a28c53c0be8253d7a558d29c30837413a3ad04f492c9f"

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
            quit:         "com.radiosilenceapp.client",
            kext:         "com.radiosilenceapp.nke.filter",
            pkgutil:      "com.radiosilenceapp.*",
            launchctl:    [
              "com.radiosilenceapp.trial",
              "com.radiosilenceapp.agent",
              "com.radiosilenceapp.nke",
            ]

  zap trash: "~/Library/Application Support/Radio Silence"
end
