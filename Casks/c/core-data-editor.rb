cask "core-data-editor" do
  version "5.2"
  sha256 "949902f859efeba9b5d9112210f32cb1020f9b43d81f43489c559ddd8e20f0e2"

  url "https://github.com/ChristianKienle/Core-Data-Editor/releases/download/#{version}/Core.Data.Editor.zip"
  name "Core Data Editor"
  homepage "https://github.com/ChristianKienle/Core-Data-Editor/"

  depends_on macos: ">= :sierra"

  app "Core Data Editor.app"

  caveats do
    requires_rosetta
  end
end
