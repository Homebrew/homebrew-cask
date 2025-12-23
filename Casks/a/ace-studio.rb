cask "ace-studio" do
  arch arm: "arm64", intel: "x86_64"

  version "2.0.2,1673"
  sha256 arm:   "c4d929c7feada26216f11aa3d71da909d4b6ecbefe4c5f5e3d8df1f153d10411",
         intel: "0a1a5321ccc747276323ff95f9bd8b80ccf0a89089486a08f2f8c5c89f2c931c"

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

  depends_on macos: ">= :ventura"

  app "ACE Studio.app"

  zap trash: [
    "/Library/Audio/Plug-Ins/Components/ACE Bridge*.component",
    "/Library/Audio/Plug-Ins/VST3/ACE Bridge*.vst3",
    "~/ACE_Studio",
    "~/Library/Application Support/ACE Studio",
    "~/Library/Caches/com.juce.locks/acestudiovst",
  ]
end
