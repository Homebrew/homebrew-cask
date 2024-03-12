cask "cosmosdb-dmt" do
    version "2.1.4"
    sha256 "d016a55afd26438a0e2ed4bdfaf489775653d4fec3e08b5a12bf71a262c5a4dd"
  
    url "https://github.com/AzureCosmosDB/data-migration-desktop-tool/releases/download/#{version}/dmt-#{version}-mac-x64.zip"
    name "Cosmos DB Data Migration Tool"
    desc "The Azure Cosmos DB Desktop Data Migration Tool is an open-source project containing a command-line application that provides import and export functionality for Azure Cosmos DB."
    homepage "https://github.com/AzureCosmosDB/data-migration-desktop-tool"

    binary "#{staged_path}/mac-package/dmt", target: "dmt"

    def post_install
        chmod "+x", "/usr/local/bin/dmt/dmt"
    end

    def test
        assert_equal "#{version}", shell_output("/usr/local/bin/dmt/dmt --version").strip
    end
end