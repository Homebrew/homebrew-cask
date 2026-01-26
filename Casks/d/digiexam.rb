cask "digiexam" do
  version "25.4.6"
  sha256 :no_check

  url "https://www.digiexam.com/hubfs/client/Digiexam_Mac_universal.dmg"
  name "digiexam"
  desc "Academic testing platform with device lockdown"
  homepage "https://www.digiexam.com/"

  # The Release Notes page uses JavaScript to render release information and the
  # version data is stored in a JS file with a URL that changes between updates.
  livecheck do
    url "https://www.digiexam.com/release-notes"
    regex(/mac:\s*\[.*?version:\s*["']v?(\d+(?:\.\d+)+)["']/i)
    strategy :page_match do |page, regex|
      # Find the current JS file URL on the page
      js_url = page[/src=["']?([^"' >]*?module_?Release_?Notes_?Customized_?Module(?:\.min)?\.js)["']?/i, 1]
      next unless js_url

      # Fetch the JS file content
      js_content = Homebrew::Livecheck::Strategy.page_content(URI.join(@url, js_url).to_s)[:content]
      next if js_content.blank?

      # NOTE: We can only reliably match the first Mac version (which should be
      # newest), as matching additional versions could spill over into the data
      # for another OS
      js_content[regex, 1]
    end
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Digiexam.app"

  zap trash: [
    "~/Library/Application Support/com.digiexam.student",
    "~/Library/Application Support/Digiexam",
    "~/Library/Caches/com.digiexam.student",
    "~/Library/Caches/se.digiexam.DigiExam",
    "~/Library/Caches/se.digiexam.DigiExam.ShipIt",
    "~/Library/HTTPStorages/se.digiexam.DigiExam",
    "~/Library/Logs/com.digiexam.student",
    "~/Library/Preferences/se.digiexam.DigiExam.plist",
    "~/Library/WebKit/com.digiexam.student",
  ]
end
