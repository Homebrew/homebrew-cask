cask "metaz" do
  version "1.0.beta-113"
  sha256 "5f0d43794ac76c025ad1c0f6419dfea58c8c696d7e2782060d2aa12554316588"

  url "https://github.com/griff/metaz/releases/download/v#{version}/MetaZ-#{version}.zip",
      verified: "github.com/griff/metaz/"
  name "MetaZ"
  desc "Mp4 meta-data editor"
  homepage "https://griff.github.io/metaz/"

  app "MetaZ.app"
end
