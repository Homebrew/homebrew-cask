cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.86.1,01M2R7V7NCS864HJ37NRC0R031"
    sha256 "8301f3399ccc256b815fe3a8c1061d29cd7b7c42b6b17e4c9ae42572480b5c92"
  end
  on_intel do
    version "0.86.1,01M2R7TRVP2DGH456KQDYX2JYP"
    sha256 "cf618a913d6f1842f25a868dbe2f8e010b1ac9ddd3dd1c06af5e88bb90dd61bc"
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
