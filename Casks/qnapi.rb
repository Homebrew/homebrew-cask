cask "qnapi" do
  version "0.2.3"
  sha256 "9bb7f9ba42f6795c7e094ba6555e14955e02b5e2f5277454dc4a96b1569871d1"

  url "https://github.com/QNapi/qnapi/releases/download/#{version}/QNapi-#{version}.dmg",
      verified: "github.com/QNapi/qnapi/"
  name "QNapi"
  homepage "https://qnapi.github.io/"

  app "QNapi.app"
end
