cask "radio-silence" do
  version "2.3"
  sha256 "4c9b6db366d542ad9bc839dc496521ff7133e13d0c71435cacf30f449718f0d6"

  url "https://radiosilenceapp.com/downloads/Radio_Silence_#{version}.pkg"
  appcast "https://radiosilenceapp.com/update"
  name "Radio Silence"
  desc "Network monitor and firewall"
  homepage "https://radiosilenceapp.com/"

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
