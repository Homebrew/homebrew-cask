cask "ray" do
  version "1.17.0"

  if Hardware::CPU.intel?
    sha256 "b6e62436517e77e854a499106bcf76b4b6849acf4c32580f73a62cde164cddc0"
    url "https://ray-app.s3.eu-west-1.amazonaws.com/Ray-#{version}.dmg",
        verified: "ray-app.s3.eu-west-1.amazonaws.com/"
  else
    sha256 "342661b8b191023173c818751106004034ef0cbd531800f7fae459bb7af8e784"
    url "https://ray-app.s3.eu-west-1.amazonaws.com/arm64/Ray-#{version}-arm64.dmg",
        verified: "ray-app.s3.eu-west-1.amazonaws.com/"
  end

  name "Ray"
  desc "Debug with Ray to fix problems faster"
  homepage "https://myray.app/"

  livecheck do
    url "https://ray-app.s3.amazonaws.com/latest-mac.yml"
    strategy :page_match
    regex(/Ray-(\d+(?:\.\d+)*)-mac\.zip/i)
  end

  auto_updates true

  app "Ray.app"

  zap trash: [
    "~/Library/Application Support/Ray",
    "~/Library/Caches/be.spatie.ray",
    "~/Library/Caches/be.spatie.ray.ShipIt",
    "~/Library/Logs/Ray",
    "~/Library/Preferences/be.spatie.ray.plist",
    "~/Library/Saved Application State/be.spatie.ray.savedState",
  ]
end
