cask "meta" do
  version "1.9.6"
  sha256 "128c08df7852bb662648fabfedb8f214b7948de6b865b806dbe94a48480f3811"

  url "https://www.nightbirdsevolve.com/meta/updates/bin/Meta%20#{version}.zip"
  appcast "https://www.nightbirdsevolve.com/meta/updates/"
  name "Meta"
  desc "Tag editor for digital music"
  homepage "https://www.nightbirdsevolve.com/meta/"

  app "Meta.app"
end
