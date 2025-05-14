cask "ace-studio" do
  arch arm: "arm64", intel: "x86_64"

  version "1.9.11,1220"
  sha256 arm:   "6d352cc9c7bcb0dbcc02693916ae8fbb355b5df00bb68aff0d1ecdd56bafb7ee",
         intel: "4cad589b7cdf1683e9d1ebed1fd5d18bf0eb34b1d7f8d2203dbcd5c1a24217f8"

  url "https://as-api-ws-cdn-1.tdacestudio.com/web/app/ACE_Studio_#{version.csv.first}_#{version.csv.second}_#{arch}_general.dmg",
      verified: "as-api-ws-cdn-1.tdacestudio.com/web/app/"
  name "ACE Studio"
  desc "AI Singing Voice Generator"
  homepage "https://acestudio.ai/versions"

  livecheck do
    url "https://as-api.tdacestudio.com/api/as/web/app/v2/previous?cl=general"
    regex(/ACE[._-]Studio[._-]v?(\d+(?:[._]\d+)+)[._-]#{arch}[._-]general\.dmg/i)
    strategy :json do |json, regex|
      json.dig("data", "resources")&.map do |resource|
        match = resource["resource_url"]&.match(regex)
        next if match.blank?

        match[1].tr("_", ",")
      end
    end
  end

  depends_on macos: ">= :mojave"

  app "ACE Studio.app"

  zap trash: [
    "/Library/Audio/Plug-Ins/Components/ACE Bridge*.component",
    "/Library/Audio/Plug-Ins/VST3/ACE Bridge*.vst3",
    "~/ACE_Studio",
    "~/Library/Application Support/ACE Studio",
    "~/Library/Caches/com.juce.locks/acestudiovst",
  ]
end
