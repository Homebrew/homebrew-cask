cask "oclint" do
  version "22.02"
  sha256 "6f102a568af3a4344f9658b5f4bdf3d599a851456287bf7a1fae447891f7368c"

  url "https://github.com/oclint/oclint/releases/download/v#{version}/oclint-#{version}-llvm-13.0.1-x86_64-darwin-macos-12.2-xcode-13.2.tar.gz",
      verified: "github.com/oclint/oclint/"
  name "OCLint"
  desc "Static source code analysis tool"
  homepage "https://oclint.org/"

  binary "oclint-#{version}/bin/oclint-json-compilation-database"
  binary "oclint-#{version}/bin/oclint-xcodebuild"
  binary "oclint-#{version}/bin/oclint"
  binary "oclint-#{version}/include/c++/v1", target: "#{HOMEBREW_PREFIX}/include/c++/v1"
  binary "oclint-#{version}/lib/clang", target: "#{HOMEBREW_PREFIX}/lib/clang"
  binary "oclint-#{version}/lib/oclint", target: "#{HOMEBREW_PREFIX}/lib/oclint"
end
