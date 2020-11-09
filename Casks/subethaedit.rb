cask "subethaedit" do
  version "5.1.5"
  sha256 "0f2c74802b158562234f3779b34e66b1d2bc6c1f6a74e8c7f1cd5c90a1d83226"

  url "https://subethaedit.net/Releases/SubEthaEdit-#{version}.zip"
  appcast "https://subethaedit.net/appcast.xml"
  name "SubEthaEdit"
  desc "Plain text and source editor"
  homepage "https://subethaedit.net/"

  depends_on macos: ">= :high_sierra"

  app "SubEthaEdit.app"
end
