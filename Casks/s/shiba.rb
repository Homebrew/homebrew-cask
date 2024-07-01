cask "shiba" do
  version "1.2.1"
  sha256 "599dc0db44d82145fb71583cdca6561077d72e532bf132a4b013a360f7b9ba82"

  url "https://github.com/rhysd/Shiba/releases/download/v#{version}/Shiba-darwin-x64.zip"
  name "Shiba"
  desc "Rich markdown live preview app with linter"
  homepage "https://github.com/rhysd/Shiba/"

  app "Shiba-darwin-x64/Shiba.app"

  caveats do
    requires_rosetta
  end
end
