cask "ace-studio" do
  arch arm: "arm64", intel: "x86_64"

  version "1.9.8,1022"
  sha256 arm:   "3a74a78bbae6163c67bdfc989a1545223efce468e4e86c92175bf734da735eaf",
         intel: "a405589c5ff05331223fe6bef682cfb659bb9931f57a29a7ca005548e54cdfdf"

  url "https://as-api-ws-cdn-1.tdacestudio.com/web/app/ACE_Studio_#{version.csv.first}_#{version.csv.second}_#{arch}_general.dmg",
      verified: "as-api-ws-cdn-1.tdacestudio.com/web/app/"
  name "ACE Studio"
  desc "AI Singing Voice Generator"
  homepage "https://acestudio.ai/versions"

  livecheck do
    url "https://as-api.tdacestudio.com/api/as/web/app/v2/previous?cl=general"
    regex(/ACE[._-]Studio[._-]v?(\d+(?:[._]\d+)+)[._-]#{arch}[._-]general\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex)&.map { |match| match[0].tr("_", ",") }
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
