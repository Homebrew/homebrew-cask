cask "archiver" do
  version "3.0.9"
  sha256 "6e5a623b5ab84efafa9d7dee5f76527a458518552d7caa1dcaae48f23048783e"

  url "https://storage.googleapis.com/incrediblebee/apps/Archiver-#{version.major}/Archiver-#{version}.zip",
      verified: "storage.googleapis.com/incrediblebee/"
  name "Archiver"
  desc "Open archives, compress files, as well as split and combine files"
  homepage "https://archiverapp.com/"

  livecheck do
    url "https://api.incrediblebee.com/appcasts/archiver-#{version.major}.xml"
    strategy :page_match
    regex(%r{url=.*?/Archiver-(\d+(?:\.\d+)*)\.zip}i)
  end

  depends_on macos: ">= :sierra"

  app "Archiver.app"

  zap trash: [
    "~/Library/Application Support/com.incrediblebee.Archiver*",
    "~/Library/Preferences/com.incrediblebee.Archiver*.plist",
  ]
end
