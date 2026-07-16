cask "ace-studio" do
  arch arm: "arm64", intel: "x86_64"

  version "2.1.3,2202"
  sha256 arm:   "6982f42c10a982ab71aed21accf4b1b0998390e6ed7529f92a729d4273b93e35",
         intel: "cc3618852f2dc0c5ba477b95c1920a90c4a5ba8944271ed3457962fe9985df7a"

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
