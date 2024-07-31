cask "to-audio-converter" do
  version "1.0.20,1252"
  sha256 :no_check

  url "https://amvidia.com/downloads/to-audio-converter-mac.dmg"
  name "To Audio Converter"
  desc "Audio converter"
  homepage "https://amvidia.com/to-audio-converter"

  livecheck do
    url "https://amvidia.com/to-audio-converter/support"
    regex(/Version:.*?v?(\d+(?:\.\d+)+)\s+\((\d+)\)/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  depends_on macos: ">= :high_sierra"

  app "To Audio Converter.app"

  zap trash: [
    "~/Library/Application Scripts/com.amvidia.To-Audio-Converter-FS",
    "~/Library/Containers/To Audio Converter",
    "~/Library/Saved Application State/com.amvidia.To-Audio-Converter-FS.savedState",
  ]
end
