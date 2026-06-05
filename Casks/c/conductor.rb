cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.62.0,01KTCS9P36S1ENTR5SF1JEN1NP"
    sha256 "7e3eca8e13013ab1230916dc33369e17bd405898119f33b0ce163796fd224b69"
  end
  on_intel do
    version "0.62.0,01KTCS9TC0H5PSM8W70MXNHK03"
    sha256 "f2397ecfc463915e15f4ecddd36f9f987634e4f856cd0bcf7feeecf396ae0737"
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
