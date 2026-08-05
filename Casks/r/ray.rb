cask "ray" do
  version "3.2.10"

  on_arm do
    sha256 "8965569f043c36bd7e12decfbb12db1511962b4e7edf423d05599d65c5ccc25a"

    url "https://ray-app.s3.eu-west-1.amazonaws.com/ray-app-updates-v3/stable/ray-#{version}-latest-darwin-arm64.dmg",
        verified: "ray-app.s3.eu-west-1.amazonaws.com/ray-app-updates-v3/"
  end
  on_intel do
    sha256 "dc7a6fbfcfd6029180dfd0181c834124b714ebb249e0472a9ca0de4060dcbfe1"

    url "https://ray-app.s3.eu-west-1.amazonaws.com/ray-app-updates-v3/stable/ray-#{version}-latest-darwin-x64.dmg",
        verified: "ray-app.s3.eu-west-1.amazonaws.com/ray-app-updates-v3/"
  end

  name "Ray"
  desc "Debug with Ray to fix problems faster"
  homepage "https://myray.app/"

  livecheck do
    url "https://amazonaws.com"
    skip "Upstream tracking file is hardcoded to obsolete 2.x stream"
  end

  auto_updates true
  depends_on :macos

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
