cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.82.3,01M0JKABRM7QN91T9VFJANXBSH"
    sha256 "53a9957b462d285904b0b118298fe95589a882aa8914a3add4837a7e7d42d187"
  end
  on_intel do
    version "0.82.3,01M0JKAJ6DG39Q8QFXJB08W2WD"
    sha256 "7d72706536fc83ee204a5d77142609af4f52cb6615dfd6903d7c00225300b7f6"
  end

  url "https://cdn.crabnebula.app/asset/#{version.csv.second}",
      verified: "cdn.crabnebula.app/asset/"
  name "Conductor"
  desc "Claude code parallelisation"
  homepage "https://conductor.build/"

  livecheck do
    url "https://cdn.crabnebula.app/update/melty/conductor/darwin-#{arch}/latest"
    regex(%r{/asset/([^?/]+)}i)
    strategy :json do |json, regex|
      asset_id = json["url"]&.[](regex, 1)
      version = json["version"]
      next if asset_id.blank? || version.blank?

      "#{version},#{asset_id}"
    end
  end

  auto_updates true
  depends_on :macos

  app "Conductor.app"

  zap trash: [
    "~/Library/Application Support/com.conductor.app",
    "~/Library/Caches/com.conductor.app",
    "~/Library/WebKit/com.conductor.app",
  ]
end
