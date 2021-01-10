cask "ray" do
  version "1.0.7"
  sha256 "359007ee68c4c6fe7b2814acd808958a3bd59db4f15c9c1f353380d4e764d55d"

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
