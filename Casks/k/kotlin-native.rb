cask "kotlin-native" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.0.20"
  sha256 arm:   "d32c968326cc7e80774cd291d9c8da8c7ac1a13d643723a6c5600a23d9c6a985",
         intel: "05df297a06f3e074a4a7db269a5ad652ea6248ea1478ef1a3e32aafc13acd713"

  url "https://github.com/JetBrains/kotlin/releases/download/v#{version}/kotlin-native-prebuilt-macos-#{arch}-#{version}.tar.gz",
      verified: "github.com/JetBrains/kotlin/"
  name "Kotlin Native"
  desc "LLVM backend for Kotlin"
  homepage "https://kotlinlang.org/docs/reference/native-overview.html"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  conflicts_with formula: "kotlin"

  binary "kotlin-native-prebuilt-macos-#{arch}-#{version}/bin/cinterop"
  binary "kotlin-native-prebuilt-macos-#{arch}-#{version}/bin/generate-platform"
  binary "kotlin-native-prebuilt-macos-#{arch}-#{version}/bin/jsinterop"
  binary "kotlin-native-prebuilt-macos-#{arch}-#{version}/bin/klib"
  binary "kotlin-native-prebuilt-macos-#{arch}-#{version}/bin/konan-lldb"
  binary "kotlin-native-prebuilt-macos-#{arch}-#{version}/bin/konanc"
  binary "kotlin-native-prebuilt-macos-#{arch}-#{version}/bin/kotlinc-native"
  binary "kotlin-native-prebuilt-macos-#{arch}-#{version}/bin/run_konan"

  # No zap stanza required
  caveats do
    depends_on_java "6+"
  end
end
