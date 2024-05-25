# typed: true
# frozen_string_literal: true

cask "codesmooth" do
  version "1.0.2"
  sha256 "2805e981104f9578363fb8c3ff18352101c23b27a7717e8916848809cf6875ee"

  url "https://github.com/CodeSmooth-dev/codesmooth-cli/releases/download/#{version}/codesmooth-#{version}.tar.gz"
  name "CodeSmooth CLI"
  desc "Command-line interface for CodeSmooth tasks"
  homepage "https://github.com/CodeSmooth-dev/codesmooth-cli"

  binary "bin/codesmooth-macos", target: "codesmooth"

  zap trash: "~/.config/codesmooth"

  caveats do
    license "https://www.apache.org/licenses/LICENSE-2.0"
  end
end
