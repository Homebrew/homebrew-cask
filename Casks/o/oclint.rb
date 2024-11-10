cask "oclint" do
  arch arm: "arm64", intel: "x86_64"

  version "22.02"
  sha256 arm:   "b18196a459f1b30bb4b6849b5952327458671ff9f65b30c9766e8a430de23c35",
         intel: "6f102a568af3a4344f9658b5f4bdf3d599a851456287bf7a1fae447891f7368c"

  on_intel do
    binary "oclint-#{version}/include/c++/v1", target: "#{HOMEBREW_PREFIX}/include/c++/v1"
  end

  url "https://github.com/oclint/oclint/releases/download/v#{version}/oclint-#{version}-llvm-13.0.1-#{arch}-darwin-macos-12.2-xcode-13.2.tar.gz"
  name "OCLint"
  desc "Static source code analysis tool"
  homepage "https://github.com/oclint/oclint/"

  binary "oclint-#{version}/bin/oclint-json-compilation-database"
  binary "oclint-#{version}/bin/oclint-xcodebuild"
  binary "oclint-#{version}/bin/oclint"
  binary "oclint-#{version}/lib/clang", target: "#{HOMEBREW_PREFIX}/lib/clang"
  binary "oclint-#{version}/lib/oclint", target: "#{HOMEBREW_PREFIX}/lib/oclint"

  # No zap stanza required
end
