# typed: true
# frozen_string_literal: true

cask "codesmooth" do
  sha256 "62a088560abe5ca71cf3900165a0178facc3b39960695d00084f2926f9e4acf0"

  url "https://storage.googleapis.com/codesmooth-resources/public/cli/codesmooth-#{version}.tar.gz"
  name "CodeSmooth CLI"
  desc "Command-line interface for CodeSmooth tasks"
  homepage "https://github.com/CodeSmooth-dev/codesmooth-cli"

  binary "bin/codesmooth-macos", target: "codesmooth"

  zap trash: "~/.config/codesmooth"

  caveats do
    license "https://www.apache.org/licenses/LICENSE-2.0"
  end
end
