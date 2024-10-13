cask "shiori" do
  version "1.1.0"
  sha256 "0496885a3f738681184c28e61fe134621a831af3c8f457784e9da72e43eae94d"

  url "https://aki-null.net/shiori/release/Shiori_#{version}.zip"
  name "Shiori"
  desc "Pinboard and Delicious client that allows you to find and add bookmarks"
  homepage "https://aki-null.net/shiori/"

  deprecate! date: "2024-10-12", because: :unmaintained

  app "Shiori.app"

  caveats do
    requires_rosetta
  end
end
