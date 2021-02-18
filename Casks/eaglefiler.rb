cask "eaglefiler" do
  version "1.9.3"
  sha256 "5c265098119bfb7c03ca5c62c3b9e16a8019c126eaf8b7948f64546bf3e3bf66"

  url "https://c-command.com/downloads/EagleFiler-#{version}.dmg"
  appcast "https://c-command.com/eaglefiler/help/version-history"
  name "EagleFiler"
  homepage "https://c-command.com/eaglefiler/"

  app "EagleFiler.app"
end
