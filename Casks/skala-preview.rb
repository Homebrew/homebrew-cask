cask "skala-preview" do
  version "2.0"
  sha256 "4dd88357012c75216dc9bac018b789db37e150608fc1078da00b9c2c36bb7f94"

  url "https://bjango.s3.amazonaws.com/files/skalapreview/skalapreview#{version}.zip",
      verified: "bjango.s3.amazonaws.com/"
  name "Skala Preview"
  homepage "https://bjango.com/mac/skalapreview/"

  app "Skala Preview.app"
end
