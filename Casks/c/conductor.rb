cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.55.1,01KS3QGHS8EDPC8FBH3WWV5BHS"
    sha256 "34886dd79da48391c97260be7e7deafae31cd5a229633af017459b1b07415c5c"
  end
  on_intel do
    version "0.55.1,01KS3QH1KSPE11ZC7BYPJ3ECHS"
    sha256 "ff81d5880516830ee0fc195acb79c447b4a32d42d07cac877657781b6cd3bbb6"
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
