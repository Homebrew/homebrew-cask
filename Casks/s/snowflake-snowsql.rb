cask "snowflake-snowsql" do
  arch arm: "arm64", intel: "x86_64"

  version "1.2.31"
  sha256 arm:   "6e6e0f0d89a3d3819aa9971b8f90f6b6879d059f1514be35f1fbd57522fcc3ac",
         intel: "7deedda5fb6def415d89247539dbee183511e6e44e0942a5d090d9d0b1fed235"

  url "https://sfc-repo.snowflakecomputing.com/snowsql/bootstrap/#{version.major_minor}/darwin_#{arch}/snowsql-#{version}-darwin_#{arch}.pkg",
      verified: "sfc-repo.snowflakecomputing.com/"
  name "SnowSQL"
  desc "Command-line client for connecting to Snowflake"
  homepage "https://snowflake.com/"

  livecheck do
    url "https://sfc-repo.snowflakecomputing.com/snowsql/bootstrap/#{version.major_minor}/darwin_#{arch}/index.html"
    regex(%r{">snowsql-(\d+(?:\.\d+)+)-darwin_#{arch}.pkg</a>})
  end

  pkg "snowsql-#{version}-darwin_#{arch}.pkg"

  uninstall pkgutil: "net.snowflake.snowsql"

  zap trash: "~/.snowsql"
end
