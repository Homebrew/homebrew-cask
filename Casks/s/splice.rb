cask "splice" do
  version "5.0.5"
  sha256 :no_check

  url "https://splicedesktop.s3.amazonaws.com/darwin/stable/Splice.app.zip",
      verified: "splicedesktop.s3.amazonaws.com/"
  name "Splice"
  desc "Cloud-based music creation and collaboration platform"
  homepage "https://splice.com/"

  livecheck do
    url "https://api.splice.com/v2/desktop/darwin/stable/latest?v=0.0.0"
    strategy :json do |json|
      json["name"]
    end
  end

  app "Splice.app"

  uninstall quit: "com.splice.Splice"

  zap trash: [
    "~/Library/Application Support/*Splice*",
    "~/Library/Caches/com.splice*",
    "~/Library/Preferences/com.splice*",
  ]
end
