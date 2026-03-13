cask "jiba" do
  version "1.3.1"
  sha256 "8ae0a076a0760b2696996cff5c6fd92a5b06d2518cf36681a497728eaf952094"

  url "https://hee.ink/updates/stable/JiBA-#{version}.dmg"
  name "JiBA"
  desc "Apple Music metadata localization tool"
  homepage "https://jiba.hee.ink/"

  livecheck do
    url "https://hee.ink/updates/stable/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "JiBA.app"
end
