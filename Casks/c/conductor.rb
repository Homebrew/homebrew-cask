cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.89.5,01M3X51XAD2YYQ867ABQGJMT4K"
    sha256 "e18f2009a09bf455979192aca6f6c777f3c227b96967db833a0b23b8d051dee2"
  end
  on_intel do
    version "0.89.5,01M3X522JNW1C9DMA16F18GFBD"
    sha256 "b46d67c75b79b11989f44153acd530085004f0f1b2facf7814e252f742d55929"
  end

  url "https://cdn.crabnebula.app/asset/#{version.csv.second}"
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
