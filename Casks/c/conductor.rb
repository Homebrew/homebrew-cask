cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.61.1,01KT0B610N7JBNB5Q7Y3XS39QN"
    sha256 "53e3e112fc944bb5c5107150e1f0200ed7fea3442ef3dd25e7107dcef5fe3f61"
  end
  on_intel do
    version "0.61.1,01KT0B5VTCCB9HB1BJV7YWXMBN"
    sha256 "d39494493a43f1de6f45fa43b3ca56359874975822c4b710a0c41e626083e17c"
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
