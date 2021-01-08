cask "ray" do
  version "1.0.1"
  sha256 "316fbfc6c012d4f965a04b859731f0bdde5575e010034fdfac3a296c70cc7509"

  url "https://ray-app.s3.eu-west-1.amazonaws.com/Ray-#{version}.dmg",
      verified: "ray-app.s3.eu-west-1.amazonaws.com/"
  name "Ray"
  desc "Debug with Ray to fix problems faster"
  homepage "https://myray.app/"

  app "Ray.app"

  zap trash: [
    "~/Library/Application Support/Ray",
    "~/Library/Preferences/be.spatie.ray.plist",
    "~/Library/Ray",
  ]
end
