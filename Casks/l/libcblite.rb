cask "libcblite" do
  version "3.2.1"
  sha256 "0edac8996e7620fbb6f61c0ad0062193519b8ab93c55ae4ac47d52fe938f28bc"

  url "https://packages.couchbase.com/releases/couchbase-lite-c/#{version}/couchbase-lite-c-enterprise-#{version}-macos.zip"
  name "Couchbase Lite (Enterprise Edition)"
  desc "Couchbase Lite Libraries for C and C++ (Enterprise Edition)"
  homepage "https://www.couchbase.com/products/lite"

  livecheck do
    url "https://docs.couchbase.com/couchbase-lite/current/c/gs-install.html"
    regex(/href=.*?couchbase[._-]lite[._-]c[._-]enterprise[._-]v?(\d+(?:\.\d+)+)[._-]macos\.zip/i)
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
    if File.symlink?("#{HOMEBREW_PREFIX}/lib/libcblite.#{version.major}.dylib")
      puts "Removing library symlinks in #{HOMEBREW_PREFIX}/lib"
      File.unlink("#{HOMEBREW_PREFIX}/lib/libcblite.#{version.major}.dylib", "#{HOMEBREW_PREFIX}/lib/libcblite.dylib")
    end
  end

  # No zap stanza required
end
