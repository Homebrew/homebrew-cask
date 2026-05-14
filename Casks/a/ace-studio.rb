cask "ace-studio" do
  arch arm: "arm64", intel: "x86_64"

  version "2.1.0,2004"
  sha256 arm:   "3cb252bcf0edcd541e2f3be2f6858f0711eac9f1054719b584ba4c701b549be9",
         intel: "92a1d42922ba0ce2935f20f33eee4087683c19754380586cfd82cb9227bc33fa"

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

  depends_on macos: :ventura

  app "ACE Studio.app"

  zap trash: [
    "/Library/Audio/Plug-Ins/Components/ACE Bridge*.component",
    "/Library/Audio/Plug-Ins/VST3/ACE Bridge*.vst3",
    "~/ACE_Studio",
    "~/Library/Application Support/ACE Studio",
    "~/Library/Caches/com.juce.locks/acestudiovst",
  ]
end
