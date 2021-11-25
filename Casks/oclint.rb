cask "oclint" do
  version "21.10"
  sha256 "5cdfafde27cd42ee338cb41c7fb3d27ecd6b8e19c09520589c46e82805801277"

  url "https://github.com/oclint/oclint/releases/download/v#{version}/oclint-#{version}-llvm-13.0.0-x86_64-darwin-macos-monterey-12.0-xcode-13.1.tar.gz",
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
