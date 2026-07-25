cask "baseline" do
  version "3.0"
  sha256 "ec9bcc7b1363638f87973c13198fa9a52f630999fbade71ce4637daafbf31dd3"

  url "https://github.com/SecondSonConsulting/Baseline/releases/download/v#{version}/Baseline_v#{version}.pkg"
  name "Baseline"
  desc "Automate onboardings by installing apps and running scripts"
  homepage "https://github.com/SecondSonConsulting/Baseline"

  depends_on cask: "swiftdialog"
  depends_on macos: :sequoia

  pkg "Baseline_v#{version}.pkg"

  uninstall launchctl: "com.secondsonconsulting.baseline",
            pkgutil:   "com.secondsonconsulting.Baseline",
            delete:    [
              "/Library/LaunchDaemons/com.secondsonconsulting.baseline.plist",
              "/usr/local/Baseline",
            ]

  # No zap stanza required
end
