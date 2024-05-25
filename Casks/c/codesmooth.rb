# typed: true
# frozen_string_literal: true

cask "codesmooth" do
  version "1.0.0"
  sha256 "da9c9950fdbae2081b6bf25281cafe403453f31f58e1bb09311619e47db12ab9"

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
