cask "pineapple" do
  version "0.8.0"
  sha256 "9ad7c2371ff5c82be5ad236c17085261dba80f462f19fafd33de6a718c162881"

  url "https://s3.amazonaws.com/com.nathansuniversity/Pineapple/Releases/Pineapple-#{version}-Python3.5.dmg",
      verified: "s3.amazonaws.com/com.nathansuniversity/Pineapple/"
  name "Pineapple"
  homepage "https://nwhitehead.github.io/pineapple/"

  deprecate! date: "2024-07-28", because: :unmaintained

  app "Pineapple.app"

  caveats do
    requires_rosetta
  end
end
