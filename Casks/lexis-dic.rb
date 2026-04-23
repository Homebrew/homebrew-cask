class LexisDic < Cask
  version "1.0.17"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

  url "https://github.com/seabornlee/ai-dic-repos/releases/download/v#{version}/LexisDic-#{version}.dmg"
  name "LexisDic"
  desc "AI-powered English Dictionary for macOS"
  homepage "https://github.com/seabornlee/ai-dic-repos"

  app "LexisDic.app"
end
