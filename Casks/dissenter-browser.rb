cask "dissenter-browser" do
  version "0.70.122,5d3f93a29dd49a5b1d9fc27f:5dbd49e3fa229c690746a809"
  sha256 "40e2d60a090eee0500debab488323d25b27c24e09c8d0353325678f3f5f59768"

  url "https://apps.gab.com/application/#{version.after_comma.before_colon}/resource/#{version.after_colon}/content",
      verified: "apps.gab.com/"
  name "Dissenter"
  desc "Web browser built for people, not advertisers"
  homepage "https://dissenter.com/"

  livecheck do
    url :homepage
    regex(%r{
      >MacOS</span>
      <span[^>]*>v?(\d+(?:\.\d+)*)</span>
      <a[^>]*href=["'][^"' >]*/([0-9a-f]+)/resource/([0-9a-f]+)["' >]
    }ix)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}:#{match[2]}" }
    end
  end

  auto_updates true

  app "Dissenter Browser.app"
end
