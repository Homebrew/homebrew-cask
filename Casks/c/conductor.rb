cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.28.7,01KE7VN6HCT4ZT0R297DW5K18Z"
    sha256 "8b99476e44223b586510d055fb1ed8b661b244c54072c7728dad68395b2b3148"
  end
  on_intel do
    version "0.28.7,01KE7VWW0745MGZKPZ21CB8Y3Q"
    sha256 "17a808da5e3e03ba763f173ccc9b92664a2b81a87f65e0ebbd4015d97bb31673"
  end

  url "https://cdn.crabnebula.app/asset/#{version.csv.second}",
      verified: "cdn.crabnebula.app/asset/"
  name "Conductor"
  desc "Claude code parallelisation"
  homepage "https://conductor.build/"

  livecheck do
    url "https://cdn.crabnebula.app/update/melty/conductor/darwin-#{arch}/latest"
    regex(%r{cdn.crabnebula.app/asset/(.+)}i)
    strategy :json do |json, regex|
      asset_id = json["url"]&.[](regex, 1)
      version = json["version"]
      next if asset_id.blank? || version.blank?

      "#{version},#{asset_id}"
    end
  end

  auto_updates true

  app "Conductor.app"

  zap trash: [
    "~/Library/Application Support/com.conductor.app",
    "~/Library/Caches/com.conductor.app",
    "~/Library/WebKit/com.conductor.app",
  ]
end
