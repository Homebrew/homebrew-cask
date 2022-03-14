cask "libcblite" do
  version "3.0.1"
  sha256 "d94d17efcd4ee3b7a44e8bba07e0c0af91b4af3732c1fdff20c26bf13cdb7329"

  url "https://packages.couchbase.com/releases/couchbase-lite-c/#{version}/couchbase-lite-c-enterprise-#{version}-macos.zip"
  name "Couchbase Lite (Enterprise Edition)"
  desc "Couchbase Lite Libraries for C and C++ (Enterprise Edition)"
  homepage "https://www.couchbase.com/products/lite"

  livecheck do
    url "http://appcast.couchbase.com/couchbase-lite-version.txt"
    regex(/(\d+(?:\.\d+)+)/i)
  end

  conflicts_with cask: "libcblite-community"
  depends_on macos: ">= :mojave"

  artifact "libcblite-#{version}/include/cbl", target: "#{HOMEBREW_PREFIX}/include/cbl"
  artifact "libcblite-#{version}/include/fleece", target: "#{HOMEBREW_PREFIX}/include/fleece"
  artifact "libcblite-#{version}/lib/cmake/CouchbaseLite", target: "#{HOMEBREW_PREFIX}/lib/cmake/CouchbaseLite"
  artifact "libcblite-#{version}/lib/libcblite.#{version}.dylib", target: "#{HOMEBREW_PREFIX}/lib/libcblite.#{version}.dylib"

  postflight do
    puts "Creating library symlinks in #{HOMEBREW_PREFIX}/lib"
    File.symlink("libcblite.#{version}.dylib", "#{HOMEBREW_PREFIX}/lib/libcblite.#{version.major}.dylib")
    File.symlink("libcblite.#{version.major}.dylib", "#{HOMEBREW_PREFIX}/lib/libcblite.dylib")
  end

  uninstall_postflight do
    puts "Removing library symlinks in #{HOMEBREW_PREFIX}/lib"
    File.unlink("#{HOMEBREW_PREFIX}/lib/libcblite.#{version.major}.dylib", "#{HOMEBREW_PREFIX}/lib/libcblite.dylib")
  end

  # No zap stanza required
end
