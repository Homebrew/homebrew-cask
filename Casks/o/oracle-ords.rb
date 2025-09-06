# typed: strict
# frozen_string_literal: true

cask "oracle-ords" do
  version "25.2.3.224.1517"
  sha256 "3e30c548bdbe1d272ca755ec91726e6c0c79fd561ebef4eb58908a56e6c9373f"

  url "https://download.oracle.com/otn_software/java/ords/ords-#{version}.zip"
  name "oracle-ords"
  desc "Oracle REST Data Services for Oracle Database"
  homepage "https://www.oracle.com/database/sqldeveloper/technologies/db-actions/download/"

  livecheck do
    url "https://www.oracle.com/database/sqldeveloper/technologies/db-actions/download/"
    strategy :page_match do |page|
      page.scan(/ords-(\d+(?:\.\d+)+)\.zip/i).map(&:first)
    end
  end

  depends_on cask: "oracle-jdk@21"
  container type: :zip

  zap delete: "#{HOMEBREW_PREFIX}/etc/ords/config",
      trash:  "~/.ords"

  caveats do
    path_environment_variable "#{staged_path}/bin"
    license "https://www.oracle.com/downloads/licenses/oracle-free-license.html"
  end
end
