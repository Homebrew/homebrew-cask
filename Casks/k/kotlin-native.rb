cask "kotlin-native" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.4.21"
  sha256 arm:   "bf4edb526d91e17d0862102f69250525d788e79011f86c2c64362749adf260ae",
         intel: "741799f163ad240f7fe54fae5334490c5a8a8fca9b9e9d39495db497b4f1763c"

  url "https://github.com/JetBrains/kotlin/releases/download/v#{version}/kotlin-native-prebuilt-macos-#{arch}-#{version}.tar.gz"
  name "Kotlin Native"
  desc "LLVM backend for Kotlin"
  homepage "https://kotlinlang.org/docs/reference/native-overview.html"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on :macos

  binary "kotlin-native-prebuilt-macos-#{arch}-#{version}/bin/cinterop"
  binary "kotlin-native-prebuilt-macos-#{arch}-#{version}/bin/generate-platform"
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
