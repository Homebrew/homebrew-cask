cask "maria" do
  version "1.2.6,1701213"
  sha256 "49fdca9fb362b96d9e51a5663edc4a7f2d2e27e3f9d14ffcaea60fdb2a155e06"

  url "https://github.com/shincurry/Maria/releases/download/v#{version.before_comma}/Maria_v#{version.before_comma}_build#{version.after_comma}.dmg"
  name "Maria"
  desc "App/widget for aria2 download tool"
  homepage "https://github.com/shincurry/Maria"

  livecheck do
    url "https://github.com/shincurry/Maria/releases/latest"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/Maria_v?(\d+(?:\.\d+)*)_build(.*?)\.dmg}i)
      "#{match[1]},#{match[2]}"
    end
  end

  app "Maria.app"
end
