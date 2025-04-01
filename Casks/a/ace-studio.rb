cask "ace-studio" do
  arch arm: "arm64", intel: "x86_64"

  on_arm do
    version "1.9.9,1058"
    sha256 "374f40846755150849b5b7a75fce595889f02c8e85e27f3c11e2bea72f3b73e3"
  end
  on_intel do
    version "1.9.9,1050"
    sha256 "4698c3efd3b6420604bcc4e81f3be9ef9e2132778e5d45a07ae5df13c40396e5"
  end

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
