cask "marvel" do
  version "11.2.0"
  sha256 "e022ff2944d4f39245e39f16adb09a4a749135d43480ea319dde39d7c00e3cd5"

  url "https://storage.googleapis.com/sketch-plugin/#{version}/Marvel.zip",
      verified: "storage.googleapis.com/sketch-plugin/"
  name "Marvel"
  desc "Prototyping, testing and handoff tools"
  homepage "https://marvelapp.com/"

  livecheck do
    url "https://storage.googleapis.com/sketch-plugin/app.xml"
    strategy :sparkle, &:short_version
  end

  app "Marvel.app"

  zap trash: "~/Library/Caches/com.marvelprototyping.marvelmacos"
end
