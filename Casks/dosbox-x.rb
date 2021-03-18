cask "dosbox-x" do
  if Hardware::CPU.intel?
    version "0.83.11,20210301003839"
    sha256 "bba985e13ec27e7e617197c3a32ff3d864e72d419b0cade85626344720ed453a"

    url "https://github.com/joncampbell123/dosbox-x/releases/download/dosbox-x-v#{version.before_comma}/dosbox-x-macosx-x86_64-#{version.after_comma}.zip",
        verified: "github.com/joncampbell123/dosbox-x/"
  else
    version "0.83.9,20201231202930"
    sha256 "cd56080debf70543b030bbe8131fd009caf37c970624be35da76c0ad4d7fca99"

    url "https://github.com/joncampbell123/dosbox-x/releases/download/dosbox-x-v#{version.before_comma}/dosbox-x-macosx-arm64-#{version.after_comma}.zip",
        verified: "github.com/joncampbell123/dosbox-x/"
  end

  name "DOSBox-X"
  desc "Fork of the DOSBox project"
  homepage "https://dosbox-x.com/"

  livecheck do
    url "https://github.com/joncampbell123/dosbox-x/releases/latest"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/dosbox-x-v?(\d+(?:\.\d+)*)/dosbox-x-macosx-x86_64-([^/]+)\.zip}i)
      "#{match[1]},#{match[2]}"
    end
  end

  app "dosbox-x/dosbox-x.app"
end
