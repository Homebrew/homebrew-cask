cask "mks" do
  version "1.6"
  sha256 "b656c7e17ccec0a066998e952293fa234ec363df5f07e7b7d7d06b7f295bf03a"

  url "https://github.com/x0054/MKS/releases/download/#{version}/MKS.dmg"
  appcast "https://github.com/x0054/MKS/releases.atom"
  name "MKS"
  homepage "https://github.com/x0054/MKS"

  app "MKS.app"
end
