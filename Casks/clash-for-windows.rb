cask "clash-for-windows" do
  version "0.18.1"

  if Hardware::CPU.intel?
    url "https://github.com/Fndroid/clash_for_windows_pkg/releases/download/#{version}/Clash.for.Windows-#{version}.dmg"
    sha256 "3d388bc0a91676ef2f3e6b93868fb790c87d56d94537db366edeb9ac5ffe1937"
  else
    url "https://github.com/Fndroid/clash_for_windows_pkg/releases/download/#{version}/Clash.for.Windows-#{version}-arm64.dmg"
    sha256 "cf770d0e0d0e592f5324d11e3c19d5b7faf8bc690048c33061ce9dcaa1c4945a"
  end

  name "Clash for Windows"
  desc "GUI based on Clash"
  homepage "https://github.com/Fndroid/clash_for_windows_pkg"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Clash for Windows.app"
end
