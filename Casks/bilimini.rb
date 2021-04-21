cask "bilimini" do
  version "1.5.2"
  sha256 "e788c43dd9717f7d822cf3be0fc76778b043a9ef1399923a8dba85f30ef680bc"

  url "https://github.com/chitosai/bilimini/releases/download/v#{version}/bilimini-#{version}-mac.zip"
  name "bilimini"
  homepage "https://github.com/chitosai/bilimini"

  auto_updates true

  app "bilimini.app"
end
