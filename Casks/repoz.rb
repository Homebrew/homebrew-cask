cask "repoz" do
  version "5.5"
  sha256 "16bb83cad7f6a889cce9b6a4fa733e055469c7c918f7809cf87dbaebf862384f"

  url "https://github.com/awaescher/RepoZ/releases/download/v#{version}/RepoZ.#{version}.pkg"
  name "RepoZ"
  desc "Zero-conf git repository hub"
  homepage "https://github.com/awaescher/RepoZ"

  livecheck do
    url :url
    strategy :github_latest
  end

  pkg "RepoZ.#{version}.pkg"

  uninstall pkgutil: "net.sodacore.RepoZ"

  zap trash: [
    "~/.config/RepoZ",
    "~/.config/sodacore studios",
    "~/Library/Preferences/net.sodacore.repoz.plist",
  ]
end
