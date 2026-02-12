cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.35.1,01KH85EFXVJ35ZWZWZT6QM2JEW"
    sha256 "4e13eaf69998f3fbe484cb6959280e0ca10ba9dc5a6d5878a2094e6ef7556e69"
  end
  on_intel do
    version "0.35.1,01KH85HTMP82VRJQMDD9SQ5BEE"
    sha256 "46f5221761e1459bd1a5db3c2b95759540f08ca730becf55dbe8f7a26c033ca6"
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
