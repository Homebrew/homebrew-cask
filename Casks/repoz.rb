cask "repoz" do
  version "5.4"
  sha256 "2c482bab34fb0969080db5d0a7d008aa9a2271cbebba915ac3e8c7e8847bf160"

  url "https://github.com/awaescher/RepoZ/releases/download/v#{version}/RepoZ.#{version}.pkg"
  appcast "https://github.com/awaescher/RepoZ/releases.atom"
  name "RepoZ"
  desc "Zero-conf git repository hub"
  homepage "https://github.com/awaescher/RepoZ"

  pkg "RepoZ.#{version}.pkg"

  uninstall pkgutil: "net.sodacore.RepoZ"

  zap trash: [
    "~/.config/RepoZ",
    "~/.config/sodacore studios",
    "~/Library/Preferences/net.sodacore.repoz.plist",
  ]
end
