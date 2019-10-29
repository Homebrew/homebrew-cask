cask 'kotlin-native' do
  version '1.3.50'
  sha256 '100920f1a3352846bc5a2990c87cb71f221abf8261251632ad10c6459d962393'

  # github.com/JetBrains/kotlin was verified as official when first introduced to the cask
  url "https://github.com/JetBrains/kotlin/releases/download/v#{version}/kotlin-native-macos-#{version}.tar.gz"
  appcast 'https://github.com/JetBrains/kotlin-native/releases.atom'
  name 'Kotlin Native'
  homepage 'https://kotlinlang.org/docs/reference/native-overview.html'

  conflicts_with formula: 'kotlin'

  binary "kotlin-native-macos-#{version}/bin/cinterop"
  binary "kotlin-native-macos-#{version}/bin/jsinterop"
  binary "kotlin-native-macos-#{version}/bin/klib"
  binary "kotlin-native-macos-#{version}/bin/konan-lldb"
  binary "kotlin-native-macos-#{version}/bin/konanc"
  binary "kotlin-native-macos-#{version}/bin/kotlinc"
  binary "kotlin-native-macos-#{version}/bin/kotlinc-native"
  binary "kotlin-native-macos-#{version}/bin/run_konan"

  caveats do
    depends_on_java '6+'
  end
end
