cask "ray" do
  version "1.7.0"
  sha256 "02c085617b11506bf1f90d9b98f46dee269bdb055d9c0c03b1e8cb07e264a4f5"

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
